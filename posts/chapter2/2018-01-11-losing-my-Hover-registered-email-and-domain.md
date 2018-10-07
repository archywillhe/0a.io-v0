---
readingTime: 15min
layout: post
title: "How I Lost My Hover Registered Email & Domains"
coverPainting: Volumi (blue), 1964, Paolo Scheggi
containsCode: true
---

It began with the trackpad.

A few weeks ago my half-decade old Apple companion decided it’s time for the trackpad to quantum-malfunction again. That had gotten me to ponder quite extensively upon the extravagant dependency I had on cursor navigation as a Command Line Advocate.

I figured it was perhaps time to leave the comfort zone and continue exploring the Vim Escape Room and Linux Jungle. I did the usual backup procedure and disk-wiped my Macintosh‎ before porting [Arch](https://wiki.archlinux.org/index.php/Arch_is_the_best) onto it. Farewell OS X.

Little did I know this was when I shot myself in the foot. Trying to log into my email on Arch ended with the conclusion that I had no memory of the new password I set last month. Well, I lost passwords all the time and resetting password had become some sort of a routine. Sun Tzu once said, "When you confuse yourself you confuse the enemy."
<!--more-->

<img src="../img/wise-words-from-sun-tzu.jpg" style="max-width:400px">

In order to recover my email password I would need to access my Hover account. I had four password variations in mind for it. I tried the first two, with no luck. And when I attempted my third variation I was notified that Hover had locked my account.

<img src="../img/locked.png" style="max-width:500px">

How many is too many? Two!

This would be no big deal except when you have used Hover to set up both your domain and email. Now the only way to recover the Hover email was to log into the Hover account, and the only way to recover the Hover account was to log into the Hover email! What a typical deadlock situation!

<img src="../img/deadlock.png" style="max-width:400px">

Lucky for me I had got a centralised system to contact (unlike in [a blockchain situation](https://github.com/ethereum/mist/issues/2077))! So I wrote to help@hover.com, and tried to reach out to them on fb & twitter.

<div style="display:table; margin:5px auto">
<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hover?ref_src=twsrc%5Etfw">@hover</a> Hi there. Please get back to me asap. I need your help. My account is locked &amp; I can&#39;t access to my recovery account.</p>&mdash; Archy Wilhes 魏何 (@archywilhes) <a href="https://twitter.com/archywilhes/status/945929498201006081?ref_src=twsrc%5Etfw">December 27, 2017</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>

<img src="../img/hover-can-you-help.png" style="max-width:300px">

Within 24 hours I received an email from Kenny from Hover Help Center. He suggested that I could either brute-force my way into the email or get a notarized affidavit to verify my identity since I'm not a U.S. citizen.

>##### Dec 27, 09:41 EST
>Hi Archy
>
>Thanks for reaching out.
>
>After reviewing the account, the easiest way for you to regain access is if you continue to try to access the primary contact email via https://mail.hover.com - if you can gain access by guessing the correct password, then you can do a password reset on the main Hover account.
>
>For security purposes, once an account has been locked out due to too many password attempts, the only way to unlock it is to do a password reset. If you absolutely cannot get into your email, we still have a way to verify you, but that's going to take a bit longer. Just to check, are you the account holder a US citizen? If you're a US citizen, we can schedule our security team to place a call to you to verify your identity. If you are not a US citizen however we will require a notarized affidavit to verify your identity. Once we process the affidavit or you've cleared the security team we can then update the primary contact email on your account and from there you can do a password reset.

I asked him if there was any other way to prove my identity, such as using my credit card information, sending a letter to my mailing address, etc.

> ##### Dec 27, 13:21 EST
>Hi Archy,
>
>I'm very sorry to hear that. I understand that this is an inconvenience to you to have an affidavit, but we only do it for security purposes. In this case when we receive an account access request from another email address that's not listed on file, there's no way for us to know whether you are the account holder or if someone else is trying to social engineer into the account to get access to your domains. To prevent anyone else from accessing your Hover account, and thus the domains, we'd need to verify that you are the account holder. Since the email address on file isn't valid, the only way for us to do that, is for you too visit a notary public and obtain an affidavit.
>
>When you visit a notary public they'd need to see some form of ID, and sign off on having seen you in person and that you've presented the ID to them. We then match the name on the affidavit to the name on the account - if it's the same name, we can update the email on the account for you, and you'd be able to do a password reset.
>
>When you obtain the affidavit, all you need to do is to send us an electronic copy, such as scanning the document, and emailing it back to me here via attaching it to the email. From there we can process it for you

Nope. They appeared to be very strict about it. Kenny proceeded by giving me more information on obtaining an affidavit! This would be very useful except I had a little problem here. I explained to him my 17 years old self didn't register the domain under my legal name<sup>1</sup>.

<blockquote style="padding:40px;font-size:0.9em">
<sup>1</sup>: As a Chinese passport holder growing up in Singapore I have an English name that is not a part of my legal name. My legal name is simply the pinyin romanisation of my Chinese name, while the English one is the name I go by in everyday life. The only time I'd use my legal name is when dealing with strictly legal documents or distant relatives who don't speak English.
</blockquote>

Is there any way around this?

> ##### Dec 28, 11:32 EST
>Hi Archy,
>
>When it comes to domain registration and account ownership, the ownership belongs to the person whose name is on the account and the domain registration. In some cases, if the organization field is filled in on a domain registration, the organization supersedes the ownership of the domain. That's why it's important to use real and valid information on domain registrations. For example, if you used John Smith on the domain registration and the account name, in that case John Smith is the owner of the domain and the account. If the email on the hover management account is no longer valid, or you no longer have access to it, then we have nothing else to verify you on other than the name on the account, which should be your real name.
>
> ...
>
> Alternatively, if you did use your real name on the Hover account, you can provide a single notarized affidavit of just your first and last name, in which case you can claim ownership of the account.

Nope. Kenny then explained to me why I wouldn't be able to reclaim the ownership of my domains, emphasising that the name in the registration has to be my _real_ name. I was rather tempted to tell him that it was indeed my _real_ name but it just so happened to have no legal bearing yet.<sup>2</sup> But I wouldn't want to get into an ontological argument with Kenny on _What is Real, really?_

<blockquote style="padding:40px;font-size:0.9em">
<sup>2</sup>: When I become a Singapore citizen in the future I'll be entitled to include an English name as part of my legal name. [The Chinese laws that forbade it](https://en.wikipedia.org/wiki/Naming_laws_in_the_People%27s_Republic_of_China) will no longer apply to me.
</blockquote>

I thanked him for the detailed break-downs and ended the conversation. Feeling defeated, I wrote a [Greasemonkey](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/) script in hopes of brute-forcing my way in.

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

    document.getElementById("rcmloginuser").value = "a@0a.io"
    document.getElementById("rcmloginpwd").value = pw
    console.log("submitting form... for the " + count + " times")
    console.log("of password" + pw)
    simulateClick(document.getElementsByClassName("mainaction")[0])

  })()
}
```

Nope. It did ~600 POST requests to mail.hover.com but to no avail.

<p style="text-align:center; font-size:1.3em">
&bull; &bull; &bull;
</p>

I did the post-mortem and disabled the credit cards affiliated with my Hover account, which was the only way to turn off the auto-renewals. I wonder what will happen when these domains expire. Perhaps that is when domain merchant bots would take their chances. I doubt I will be able to re-register any of them.

Oh dear. My super cool email address <code>a@0a.io</code> and domain <code>0a.io</code> are gone forever. And so are <code>archy.sh</code> and <code>penfield.io</code>.

Gradually we all learn that losing things is a large part of what life is about. Nonetheless, it would always take a while to get used to. At some point in time <code>0a.io</code> had become somewhat an identity to me.

While grieving over the bygone domain I recall how it has been two years since I last updated my blog. Perhaps it’s time that I start [a new one](http://zer0.degree), migrate everything to it, and get back to writing again.

Farewell <code>a@0a.io</code>. Farewell <code>0a.io</code>.
