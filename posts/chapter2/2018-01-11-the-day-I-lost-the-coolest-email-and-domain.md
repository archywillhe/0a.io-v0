---
readingTime: 10min
layout: post
title: "The Day I Lost the Coolest Email and Domain in The World"
Title: "The Day I Lost the Coolest Email and Domain in The World (Arguably)"
coverPainting: Volumi (blue), 1964, Paolo Scheggi
containsCode: true
---

The more you age the more you realise how easy it is to screw up.

It began with the trackpad. A few weeks ago my half-decade old machine companion decided it’s time for the trackpad to malfunction again, which had gotten me to ponder quite extensively upon the extravagant dependency I had on cursor navigation as a command line advocate.

Perhaps I should get back to [Emacs](http://emacs.sexy/) [/w Vi](https://www.emacswiki.org/emacs/Evil) and continue the exploration into the Linux jungle, I thought. I did the usual backup procedure and disk partitioning before porting [Arch](https://wiki.archlinux.org/index.php/Arch_is_the_best) onto my machine. It had been 2 years since I last ran Arch.

As I was doing so it didn’t even occur to me the slightest to back up passwords as well. Somewhere down the subconscious rabbit hole lazed the idea of how simple the recovery process would be in the case of losing a password. You see, I lost passwords all the time and resetting password had become some sort of a routine. Sun Tzu once said, "When you confuse yourself you confuse the enemy."

I was a huge fan of the domain registrar [Hover](https://en.wikipedia.org/wiki/Hover_(domain_registrar)) and I used it to set up both my domains and emails. There was this unsettling symmetry in the recovery relation between my email <a>a@0a.io</a> and Hover account: just like the password of <a>a@0a.io</a> which can only be reset by my Hover account, the password of my Hover account can only be reset by <a>a@0a.io</a>. A recursive and logically flawed design indeed, one that I will never allow to exist in programs I write. Nonetheless I had kept it this way for as long as I could remember. It was still somewhat a stable system since the probability of losing access to both accounts concurrently was pretty low.

Years had passed and I hadn’t run into any problem, expect this time. Hover had become hyper-sensitive with security over the years. It decided to lock my account after two failed attempts of mine log in as I fumbled for the right key. Normally I could gracefully recover the account through <a>a@0a.io</a>. But this time to access the inbox I would need to rely on this short-term memory of mine, and it just so happened I had recently changed the password in a variation experiment. I ended up writing a [Greasemonkey](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/) script in hopes of brute-forcing my way in.

```js
// ==UserScript==
// @name     please work
// @version  1
// @grant    GM.setValue
// @grant		 GM.getValue
// @include  https://mail.hover.com/*
// ==/UserScript==

var getAllPasswords = () => {
  let combinations = [
    [ /*variation*/ ],
    [ /*variation*/ ],
    [ /*variation*/ ],
    [ /*variation*/ ],
    [ /*variation*/ ],
    [ /*variation*/ ]
  ]
  let c01 = combine(combinations[0], combinations[1])
  return [].concat.apply([], [
    c01,
    combine(combinations[0], combinations[2]),
    combine(combinations[0], combinations[3]),
    combine(c01, combinations[2]),
    combine(c01, combinations[3]),
    combine(c01, combinations[4]),
    combine(c01, combinations[5]),
    combine(combinations[2], combinations[4]),
    combine(combinations[3], combinations[4]),
    combine(combinations[4], combinations[5])
  ])
}

var combine = (a, b) => [].concat.apply([], a.map(function(o) {
  return b.map(function(s) {
    return o + s
  })
}))

var simulateClick = (dom) => {
  let ev = document.createEvent("MouseEvents")
  ev.initMouseEvent("click", true, false, self, 0, 0, 0, 0, 0, false, false, false, false, 0, null)
  return dom.dispatchEvent(ev)
}

async function stall(stallTime = 2000) {
  await new Promise(resolve => setTimeout(resolve, stallTime))
}

if (document.getElementById("rcmloginuser") != null) {
  (async () => {
    console.log("attempting..")

    console.log("getting count")
    let count = await GM.getValue('count', 0)
    if (count == 0) await GM.setValue("passwords", getAllPasswords())

    console.log("getting password combination")
    let passwords = await GM.getValue("passwords", "wtf")

    let time = 3000 + Math.round(Math.random() * 30) * 100
    console.log("simluating wait-time: " + time)
    await stall()
    console.log("wait-time ended.")

    let pw = passwords[count]
    await GM.setValue('count', count + 1)

    document.getElementById("rcmloginuser").value = "<a>a@0a.io</a>"
    document.getElementById("rcmloginpwd").value = pw
    console.log("submitting form... for the " + count + " times")
    console.log("of password" + pw)
    simulateClick(document.getElementsByClassName("mainaction")[0])

  })()
}
```

After ~600 POST requests to mail.hover.com attempting all possible combinations I could derive, I was surprised that Hover didn’t block my IP address more so than that none of them got it right. Just a few months back I lost my Etheruem wallet (and my Ethers consequentially) after unsuccessful brute force attempts to decrypt the private key ([though for that incident it was clearly the wallet’s fault](https://github.com/ethereum/mist/issues/2411)). Such Déjà vu. Lucky for me there’s a centralised system I could contact this time. Yay.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hover?ref_src=twsrc%5Etfw">@hover</a> Hi there. Please get back to me asap. I need your help. My account is locked &amp; I can&#39;t access to my recovery account.</p>&mdash; Archy Wilhes 魏何 (@archywilhes) <a href="https://twitter.com/archywilhes/status/945929498201006081?ref_src=twsrc%5Etfw">December 27, 2017</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

<img src="../img/hover-can-you-help.png" style="max-width:300px">

They replied. Not very helpful though. To make the situation worst my 16 years old self didn’t register the Hover account under my legal name. So things got complicated.

>##### Dec 27, 09:41 EST
>Hi Archy
>
>Thanks for reaching out.
>
>After reviewing the account, the easiest way for you to regain access is if you continue to try to access the primary contact email via https://mail.hover.com - if you can gain access by guessing the correct password, then you can do a password reset on the main Hover account.
>
>For security purposes, once an account has been locked out due to too many password attempts, the only way to unlock it is to do a password reset. If you absolutely cannot get into your email, we still have a way to verify you, but that's going to take a bit longer. Just to check, are you the account holder a US citizen? If you're a US citizen, we can schedule our security team to place a call to you to verify your identity. If you are not a US citizen however we will require a notarized affidavit to verify your identity. Once we process the affidavit or you've cleared the security team we can then update the primary contact email on your account and from there you can do a password reset.

<div></div>

> ##### Dec 27, 13:21 EST
>Hi Archy,
>
>I'm very sorry to hear that. I understand that this is an inconvenience to you to have an affidavit, but we only do it for security purposes. In this case when we receive an account access request from another email address that's not listed on file, there's no way for us to know whether you are the account holder or if someone else is trying to social engineer into the account to get access to your domains. To prevent anyone else from accessing your Hover account, and thus the domains, we'd need to verify that you are the account holder. Since the email address on file isn't valid, the only way for us to do that, is for you too visit a notary public and obtain an affidavit.
>
>When you visit a notary public they'd need to see some form of ID, and sign off on having seen you in person and that you've presented the ID to them. We then match the name on the affidavit to the name on the account - if it's the same name, we can update the email on the account for you, and you'd be able to do a password reset.
>
>When you obtain the affidavit, all you need to do is to send us an electronic copy, such as scanning the document, and emailing it back to me here via attaching it to the email. From there we can process it for you

<div></div>

> ##### Dec 28, 11:32 EST
>Hi Archy,
>
>When it comes to domain registration and account ownership, the ownership belongs to the person whose name is on the account and the domain registration. In some cases, if the organization field is filled in on a domain registration, the organization supersedes the ownership of the domain. That's why it's important to use real and valid information on domain registrations. For example, if you used John Smith on the domain registration and the account name, in that case John Smith is the owner of the domain and the account. If the email on the hover management account is no longer valid, or you no longer have access to it, then we have nothing else to verify you on other than the name on the account, which should be your real name.
>
>In this case, after reviewing the domains you mentioned previously in your email, to claim ownership of the individual domains:
> ...

Apparently I wouldn't be able to claim ownership for 0a.io since my 17 years old self [had decided to put only half my legal name in the WHOIS record during registration](https://www.whois.com/whois/0a.io). I could now further reassure myself that my domain and email were gone forever, unless I somehow manage to snatch the domain away from domain merchants right after it expires. And that would highly likely be pretty damn hard considering I would either be competing with bots or Hover itself.

On the bright side work wasn't affected by this screw-up since I hadn't been doing anything email-intensive lately. I just needed to get a new email address and update my contacts about it, and probably losing some weak ties along the way.

"Well, it wasn't really that much of a loss overall," I said to myself trying to make me feel better about the whole thing.

Despite that I had been having quite a hard time getting over it. The realisation I would never in my life use a@0a.io and 0a.io again hurt. One can argue that losing things is a large part of what life is about. But it would always take a while to get used to. At some point in time the email and domain had become somewhat an identity to me. And while I was grieving over the bygone domain I recalled how it had been two years since I last updated 0a.io.

Perhaps it’s time that I start [a new site](http://zer0.degree), migrate everything to it, and get back to writing again.
