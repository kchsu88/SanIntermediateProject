.class public Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;
.super Lccsanandroidx/media/app/NotificationCompat$MediaStyle;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Lccsanandroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 380
    return-void
.end method

.method private setBackgroundColor(Lccsanandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "views"    # Lccsanandroid/widget/RemoteViews;

    .line 496
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 497
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContext:Lccsanandroid/content/Context;

    .line 498
    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsanandroidx/media/R$color;->notification_material_background_media_default_color:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    nop

    .line 500
    .local v0, "color":I
    sget v1, Lccsanandroidx/media/R$id;->status_bar_latest_event_content:I

    const-string/jumbo v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Lccsanandroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 501
    return-void
.end method


# virtual methods
.method public apply(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 388
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 389
    invoke-interface {p1}, Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Lccsanandroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Lccsanandroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-direct {v1}, Lccsanandroid/app/Notification$DecoratedMediaCustomViewStyle;-><init>()V

    .line 390
    invoke-virtual {p0, v1}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->fillInMediaStyle(Lccsanandroid/app/Notification$MediaStyle;)Lccsanandroid/app/Notification$MediaStyle;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$Builder;->setStyle(Lccsanandroid/app/Notification$Style;)Lccsanandroid/app/Notification$Builder;

    goto :goto_0

    .line 392
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/media/app/NotificationCompat$MediaStyle;->apply(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 394
    :goto_0
    return-void
.end method

.method getBigContentViewLayoutResource(I)I
    .locals 1
    .param p1, "actionCount"    # I

    .line 465
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    sget v0, Lccsanandroidx/media/R$layout;->ccsan_ccsan_ccsan_notification_template_big_media_narrow_custom:I

    goto :goto_0

    :cond_0
    sget v0, Lccsanandroidx/media/R$layout;->ccsan_ccsan_notification_template_big_media_custom:I

    :goto_0
    return v0
.end method

.method getContentViewLayoutResource()I
    .locals 1

    .line 433
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lccsanandroidx/media/R$layout;->ccsan_ccsan_notification_template_media_custom:I

    goto :goto_0

    .line 435
    :cond_0
    invoke-super {p0}, Lccsanandroidx/media/app/NotificationCompat$MediaStyle;->getContentViewLayoutResource()I

    move-result v0

    :goto_0
    return v0
.end method

.method public makeBigContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;
    .locals 4
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 444
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 446
    return-object v1

    .line 448
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getBigContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 449
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getBigContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 450
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    nop

    .line 451
    .local v0, "innerView":Lccsanandroid/widget/RemoteViews;
    if-nez v0, :cond_2

    .line 453
    return-object v1

    .line 455
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v1

    .line 456
    .local v1, "bigContentView":Lccsanandroid/widget/RemoteViews;
    invoke-virtual {p0, v1, v0}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Lccsanandroid/widget/RemoteViews;Lccsanandroid/widget/RemoteViews;)V

    .line 457
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 458
    invoke-direct {p0, v1}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Lccsanandroid/widget/RemoteViews;)V

    .line 460
    :cond_3
    return-object v1
.end method

.method public makeContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;
    .locals 6
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 402
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 404
    return-object v1

    .line 406
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 407
    .local v0, "hasContentView":Z
    :goto_0
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    .line 411
    if-nez v0, :cond_3

    iget-object v4, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 412
    invoke-virtual {v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getBigContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    nop

    .line 413
    .local v2, "createCustomContent":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 414
    invoke-virtual {p0}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v1

    .line 415
    .local v1, "contentView":Lccsanandroid/widget/RemoteViews;
    if-eqz v0, :cond_4

    .line 416
    iget-object v3, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Lccsanandroid/widget/RemoteViews;Lccsanandroid/widget/RemoteViews;)V

    .line 418
    :cond_4
    invoke-direct {p0, v1}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Lccsanandroid/widget/RemoteViews;)V

    .line 419
    return-object v1

    .line 421
    .end local v1    # "contentView":Lccsanandroid/widget/RemoteViews;
    .end local v2    # "createCustomContent":Z
    :cond_5
    goto :goto_3

    .line 422
    :cond_6
    invoke-virtual {p0}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v2

    .line 423
    .local v2, "contentView":Lccsanandroid/widget/RemoteViews;
    if-eqz v0, :cond_7

    .line 424
    iget-object v1, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Lccsanandroid/widget/RemoteViews;Lccsanandroid/widget/RemoteViews;)V

    .line 425
    return-object v2

    .line 428
    .end local v2    # "contentView":Lccsanandroid/widget/RemoteViews;
    :cond_7
    :goto_3
    return-object v1
.end method

.method public makeHeadsUpContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;
    .locals 4
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 476
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 478
    return-object v1

    .line 480
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 481
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 482
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    nop

    .line 483
    .local v0, "innerView":Lccsanandroid/widget/RemoteViews;
    if-nez v0, :cond_2

    .line 485
    return-object v1

    .line 487
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->generateBigContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v1

    .line 488
    .local v1, "headsUpContentView":Lccsanandroid/widget/RemoteViews;
    invoke-virtual {p0, v1, v0}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->buildIntoRemoteViews(Lccsanandroid/widget/RemoteViews;Lccsanandroid/widget/RemoteViews;)V

    .line 489
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 490
    invoke-direct {p0, v1}, Lccsanandroidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle;->setBackgroundColor(Lccsanandroid/widget/RemoteViews;)V

    .line 492
    :cond_3
    return-object v1
.end method
