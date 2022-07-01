.class public Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserTitle:Ljava/lang/CharSequence;

.field private final mContext:Lccsanandroid/content/Context;

.field private final mIntent:Lccsanandroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 5
    .param p1, "launchingContext"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "launchingContext"
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mContext:Lccsanandroid/content/Context;

    .line 319
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0}, Lccsanandroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    .line 320
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 321
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 322
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "activity":Lccsanandroid/app/Activity;
    move-object v1, p1

    .line 326
    .local v1, "context":Lccsanandroid/content/Context;
    :goto_0
    instance-of v2, v1, Lccsanandroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 327
    instance-of v2, v1, Lccsanandroid/app/Activity;

    if-eqz v2, :cond_0

    .line 328
    move-object v0, v1

    check-cast v0, Lccsanandroid/app/Activity;

    .line 329
    goto :goto_1

    .line 331
    :cond_0
    move-object v2, v1

    check-cast v2, Lccsanandroid/content/ContextWrapper;

    invoke-virtual {v2}, Lccsanandroid/content/ContextWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 334
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getComponentName()Lccsanandroid/content/ComponentName;

    move-result-object v2

    .line 336
    .local v2, "componentName":Lccsanandroid/content/ComponentName;
    iget-object v3, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v4, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {v3, v4, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    .line 337
    iget-object v3, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v4, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {v3, v4, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    .line 339
    .end local v2    # "componentName":Lccsanandroid/content/ComponentName;
    :cond_2
    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extra",
            "add"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p2, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "currentAddresses":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 399
    .local v2, "currentLength":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 400
    .local v3, "finalAddresses":[Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 401
    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    invoke-virtual {v1, p1, v3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 405
    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "add"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extra",
            "add"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 410
    .local v0, "intent":Lccsanandroid/content/Intent;
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "old":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 412
    .local v3, "oldLength":I
    :goto_0
    array-length v4, p2

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 413
    .local v4, "result":[Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :cond_1
    array-length v5, p2

    invoke-static {p2, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-virtual {v0, p1, v4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 416
    return-void
.end method

.method public static from(Lccsanandroid/app/Activity;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p0, "launchingActivity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "launchingActivity"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    new-instance v0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;

    invoke-direct {v0, p0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addEmailBcc(Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 662
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    return-object p0
.end method

.method public addEmailBcc([Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addresses"
        }
    .end annotation

    .line 675
    const-string v0, "android.intent.extra.BCC"

    invoke-direct {p0, v0, p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 676
    return-object p0
.end method

.method public addEmailCc(Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 619
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    return-object p0
.end method

.method public addEmailCc([Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addresses"
        }
    .end annotation

    .line 632
    const-string v0, "android.intent.extra.CC"

    invoke-direct {p0, v0, p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 633
    return-object p0
.end method

.method public addEmailTo(Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 576
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    return-object p0
.end method

.method public addEmailTo([Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addresses"
        }
    .end annotation

    .line 589
    const-string v0, "android.intent.extra.EMAIL"

    invoke-direct {p0, v0, p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 590
    return-object p0
.end method

.method public addStream(Lccsanandroid/net/Uri;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "streamUri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamUri"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 543
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    return-object p0
.end method

.method public createChooserIntent()Lccsanandroid/content/Intent;
    .locals 2

    .line 427
    invoke-virtual {p0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lccsanandroid/content/Intent;->createChooser(Lccsanandroid/content/Intent;Ljava/lang/CharSequence;)Lccsanandroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 393
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public getIntent()Lccsanandroid/content/Intent;
    .locals 6

    .line 352
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 353
    const-string v2, "android.intent.extra.EMAIL"

    invoke-direct {p0, v2, v0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 354
    iput-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 356
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 357
    const-string v2, "android.intent.extra.CC"

    invoke-direct {p0, v2, v0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 358
    iput-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 360
    :cond_1
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 361
    const-string v2, "android.intent.extra.BCC"

    invoke-direct {p0, v2, v0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    iput-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 365
    :cond_2
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 367
    .local v0, "needsSendMultiple":Z
    const/16 v1, 0x10

    const-string v3, "android.intent.extra.STREAM"

    if-nez v0, :cond_5

    .line 368
    iget-object v4, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v4, v5}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 369
    iget-object v4, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 370
    iget-object v4, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    iget-object v5, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Parcelable;

    invoke-virtual {v4, v3, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    .line 371
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_6

    .line 372
    iget-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    iget-object v2, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lccsanandroidx/core/app/ShareCompat$Api16Impl;->migrateExtraStreamToClipData(Lccsanandroid/content/Intent;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 375
    :cond_4
    iget-object v2, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    invoke-virtual {v2, v3}, Lccsanandroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 376
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_6

    .line 377
    iget-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    invoke-static {v1}, Lccsanandroidx/core/app/ShareCompat$Api16Impl;->removeClipData(Lccsanandroid/content/Intent;)V

    goto :goto_1

    .line 381
    :cond_5
    iget-object v2, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v4}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 382
    iget-object v2, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    iget-object v4, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Lccsanandroid/content/Intent;

    .line 383
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_6

    .line 384
    iget-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    iget-object v2, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lccsanandroidx/core/app/ShareCompat$Api16Impl;->migrateExtraStreamToClipData(Lccsanandroid/content/Intent;Ljava/util/ArrayList;)V

    .line 388
    :cond_6
    :goto_1
    iget-object v1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    return-object v1
.end method

.method public setChooserTitle(I)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    .line 446
    return-object p0
.end method

.method public setEmailBcc([Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addresses"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 647
    return-object p0
.end method

.method public setEmailCc([Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addresses"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 604
    return-object p0
.end method

.method public setEmailTo([Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addresses"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 560
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 561
    return-object p0
.end method

.method public setHtmlText(Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "htmlText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "htmlText"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 501
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-static {p1}, Lccsanandroid/text/Html;->fromHtml(Ljava/lang/String;)Lccsanandroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;

    .line 505
    :cond_0
    return-object p0
.end method

.method public setStream(Lccsanandroid/net/Uri;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "streamUri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamUri"
        }
    .end annotation

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 521
    if-eqz p1, :cond_0

    .line 522
    invoke-virtual {p0, p1}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->addStream(Lccsanandroid/net/Uri;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;

    .line 524
    :cond_0
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subject"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 689
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lccsanandroid/content/Intent;

    .line 484
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lccsanandroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Lccsanandroid/content/Intent;

    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->setType(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 470
    return-object p0
.end method

.method public startChooser()V
    .locals 2

    .line 434
    iget-object v0, p0, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {p0}, Lccsanandroidx/core/app/ShareCompat$IntentBuilder;->createChooserIntent()Lccsanandroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 435
    return-void
.end method
