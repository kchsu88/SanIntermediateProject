.class public Lccsanandroidx/core/app/ActivityCompat;
.super Lccsanandroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/ActivityCompat$Api30Impl;,
        Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;,
        Lccsanandroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Lccsanandroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lccsanandroidx/core/content/ContextCompat;-><init>()V

    .line 154
    return-void
.end method

.method public static finishAffinity(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 290
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 295
    :goto_0
    return-void
.end method

.method public static finishAfterTransition(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 307
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finishAfterTransition()V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 312
    :goto_0
    return-void
.end method

.method public static getPermissionCompatDelegate()Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1

    .line 172
    sget-object v0, Lccsanandroidx/core/app/ActivityCompat;->sDelegate:Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Lccsanandroid/app/Activity;)Lccsanandroid/net/Uri;
    .locals 4
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 332
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 333
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getReferrer()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, "intent":Lccsanandroid/content/Intent;
    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/net/Uri;

    .line 337
    .local v1, "referrer":Lccsanandroid/net/Uri;
    if-eqz v1, :cond_1

    .line 338
    return-object v1

    .line 340
    :cond_1
    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 342
    invoke-static {v2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 344
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public static invalidateOptionsMenu(Lccsanandroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->invalidateOptionsMenu()V

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public static postponeEnterTransition(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 414
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->postponeEnterTransition()V

    .line 417
    :cond_0
    return-void
.end method

.method public static recreate(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 580
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 582
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->recreate()V

    goto :goto_0

    .line 583
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 587
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 588
    .local v0, "handler":Lccsanandroid/os/Handler;
    new-instance v1, Lccsanandroidx/core/app/ActivityCompat$2;

    invoke-direct {v1, p0}, Lccsanandroidx/core/app/ActivityCompat$2;-><init>(Lccsanandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    .end local v0    # "handler":Lccsanandroid/os/Handler;
    goto :goto_0

    .line 601
    :cond_1
    invoke-static {p0}, Lccsanandroidx/core/app/ActivityRecreator;->recreate(Lccsanandroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 603
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->recreate()V

    .line 606
    :cond_2
    :goto_0
    return-void
.end method

.method public static requestDragAndDropPermissions(Lccsanandroid/app/Activity;Lccsanandroid/view/DragEvent;)Lccsanandroidx/core/view/DragAndDropPermissionsCompat;
    .locals 1
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "dragEvent"    # Lccsanandroid/view/DragEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "dragEvent"
        }
    .end annotation

    .line 569
    invoke-static {p0, p1}, Lccsanandroidx/core/view/DragAndDropPermissionsCompat;->request(Lccsanandroid/app/Activity;Lccsanandroid/view/DragEvent;)Lccsanandroidx/core/view/DragAndDropPermissionsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Lccsanandroid/app/Activity;[Ljava/lang/String;I)V
    .locals 4
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "activity",
            "permissions",
            "requestCode"
        }
    .end annotation

    .line 498
    sget-object v0, Lccsanandroidx/core/app/ActivityCompat;->sDelegate:Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0, p0, p1, p2}, Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Lccsanandroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    return-void

    .line 504
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 505
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    .end local v2    # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .restart local v2    # "permission":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission request for permissions "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must not contain null or empty values"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    .end local v2    # "permission":Ljava/lang/String;
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 512
    instance-of v0, p0, Lccsanandroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_3

    .line 513
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 514
    invoke-interface {v0, p2}, Lccsanandroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 516
    :cond_3
    invoke-virtual {p0, p1, p2}, Lccsanandroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 517
    :cond_4
    instance-of v0, p0, Lccsanandroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_5

    .line 518
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 519
    .local v0, "handler":Lccsanandroid/os/Handler;
    new-instance v1, Lccsanandroidx/core/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Lccsanandroidx/core/app/ActivityCompat$1;-><init>([Ljava/lang/String;Lccsanandroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    .end local v0    # "handler":Lccsanandroid/os/Handler;
    :cond_5
    :goto_1
    return-void
.end method

.method public static requireViewById(Lccsanandroid/app/Activity;I)Lccsanandroid/view/View;
    .locals 3
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroid/view/View;",
            ">(",
            "Lccsanandroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .line 365
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 366
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->requireViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 370
    .local v0, "view":Lccsanandroid/view/View;, "TT;"
    if-eqz v0, :cond_1

    .line 373
    return-object v0

    .line 371
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setEnterSharedElementCallback(Lccsanandroid/app/Activity;Lccsanandroidx/core/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "callback"    # Lccsanandroidx/core/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 386
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 387
    if-eqz p1, :cond_0

    .line 388
    new-instance v0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Lccsanandroidx/core/app/SharedElementCallback;)V

    goto :goto_0

    .line 389
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 390
    .local v0, "frameworkCallback":Lccsanandroid/app/SharedElementCallback;
    invoke-virtual {p0, v0}, Lccsanandroid/app/Activity;->setEnterSharedElementCallback(Lccsanandroid/app/SharedElementCallback;)V

    .line 392
    .end local v0    # "frameworkCallback":Lccsanandroid/app/SharedElementCallback;
    :cond_1
    return-void
.end method

.method public static setExitSharedElementCallback(Lccsanandroid/app/Activity;Lccsanandroidx/core/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "callback"    # Lccsanandroidx/core/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 405
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 406
    if-eqz p1, :cond_0

    .line 407
    new-instance v0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Lccsanandroidx/core/app/SharedElementCallback;)V

    goto :goto_0

    .line 408
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 409
    .local v0, "frameworkCallback":Lccsanandroid/app/SharedElementCallback;
    invoke-virtual {p0, v0}, Lccsanandroid/app/Activity;->setExitSharedElementCallback(Lccsanandroid/app/SharedElementCallback;)V

    .line 411
    .end local v0    # "frameworkCallback":Lccsanandroid/app/SharedElementCallback;
    :cond_1
    return-void
.end method

.method public static setLocusContext(Lccsanandroid/app/Activity;Lccsanandroidx/core/content/LocusIdCompat;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "locusId"    # Lccsanandroidx/core/content/LocusIdCompat;
    .param p2, "bundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "activity",
            "locusId",
            "bundle"
        }
    .end annotation

    .line 640
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 641
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/app/ActivityCompat$Api30Impl;->setLocusContext(Lccsanandroid/app/Activity;Lccsanandroidx/core/content/LocusIdCompat;Lccsanandroid/os/Bundle;)V

    .line 643
    :cond_0
    return-void
.end method

.method public static setPermissionCompatDelegate(Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;)V
    .locals 0
    .param p0, "delegate"    # Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 164
    sput-object p0, Lccsanandroidx/core/app/ActivityCompat;->sDelegate:Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 165
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Lccsanandroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "permission"
        }
    .end annotation

    .line 552
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 553
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 555
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startActivityForResult(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "intent",
            "requestCode",
            "options"
        }
    .end annotation

    .line 236
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 237
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroid/app/Activity;->startActivityForResult(Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0, p1, p2}, Lccsanandroid/app/Activity;->startActivityForResult(Lccsanandroid/content/Intent;I)V

    .line 241
    :goto_0
    return-void
.end method

.method public static startIntentSenderForResult(Lccsanandroid/app/Activity;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "intent"    # Lccsanandroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Lccsanandroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "intent",
            "requestCode",
            "fillInIntent",
            "flagsMask",
            "flagsValues",
            "extraFlags",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 273
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 274
    invoke-virtual/range {p0 .. p7}, Lccsanandroid/app/Activity;->startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lccsanandroid/app/Activity;->startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;III)V

    .line 280
    :goto_0
    return-void
.end method

.method public static startPostponedEnterTransition(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 420
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->startPostponedEnterTransition()V

    .line 423
    :cond_0
    return-void
.end method
