.class public Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
.super Lccsanandroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4172
    invoke-direct {p0}, Lccsanandroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 4173
    return-void
.end method

.method private createRemoteViews(Lccsanandroid/widget/RemoteViews;Z)Lccsanandroid/widget/RemoteViews;
    .locals 8
    .param p1, "innerView"    # Lccsanandroid/widget/RemoteViews;
    .param p2, "showActions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "innerView",
            "showActions"
        }
    .end annotation

    .line 4263
    sget v0, Lccsanandroidx/core/R$layout;->ccsan_ccsan_notification_template_custom_big:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->applyStandardTemplate(ZIZ)Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    .line 4265
    .local v0, "remoteViews":Lccsanandroid/widget/RemoteViews;
    sget v1, Lccsanandroidx/core/R$id;->actions:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4266
    const/4 v1, 0x0

    .line 4270
    .local v1, "actionsVisible":Z
    iget-object v3, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Lccsanandroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 4271
    invoke-static {v3}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->getNonContextualActions(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 4273
    .local v3, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/NotificationCompat$Action;>;"
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    .line 4274
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4275
    .local v4, "numActions":I
    if-lez v4, :cond_0

    .line 4276
    const/4 v1, 0x1

    .line 4277
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 4278
    nop

    .line 4279
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroidx/core/app/NotificationCompat$Action;

    invoke-direct {p0, v6}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->generateActionButton(Lccsanandroidx/core/app/NotificationCompat$Action;)Lccsanandroid/widget/RemoteViews;

    move-result-object v6

    .line 4280
    .local v6, "button":Lccsanandroid/widget/RemoteViews;
    sget v7, Lccsanandroidx/core/R$id;->actions:I

    invoke-virtual {v0, v7, v6}, Lccsanandroid/widget/RemoteViews;->addView(ILccsanandroid/widget/RemoteViews;)V

    .line 4277
    .end local v6    # "button":Lccsanandroid/widget/RemoteViews;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4284
    .end local v4    # "numActions":I
    .end local v5    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 4285
    .local v2, "actionVisibility":I
    :goto_1
    sget v4, Lccsanandroidx/core/R$id;->actions:I

    invoke-virtual {v0, v4, v2}, Lccsanandroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4286
    sget v4, Lccsanandroidx/core/R$id;->action_divider:I

    invoke-virtual {v0, v4, v2}, Lccsanandroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4287
    invoke-virtual {p0, v0, p1}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->buildIntoRemoteViews(Lccsanandroid/widget/RemoteViews;Lccsanandroid/widget/RemoteViews;)V

    .line 4288
    return-object v0
.end method

.method private generateActionButton(Lccsanandroidx/core/app/NotificationCompat$Action;)Lccsanandroid/widget/RemoteViews;
    .locals 6
    .param p1, "action"    # Lccsanandroidx/core/app/NotificationCompat$Action;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 4304
    iget-object v0, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4305
    .local v0, "tombstone":Z
    :goto_0
    new-instance v1, Lccsanandroid/widget/RemoteViews;

    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4306
    if-eqz v0, :cond_1

    sget v3, Lccsanandroidx/core/R$layout;->ccsan_ccsan_ccsan_ccsan_notification_action_tombstone:I

    goto :goto_1

    .line 4307
    :cond_1
    sget v3, Lccsanandroidx/core/R$layout;->ccsan_ccsan_notification_action:I

    :goto_1
    invoke-direct {v1, v2, v3}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4308
    .local v1, "button":Lccsanandroid/widget/RemoteViews;
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Action;->getIconCompat()Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 4309
    .local v2, "icon":Lccsanandroidx/core/graphics/drawable/IconCompat;
    if-eqz v2, :cond_2

    .line 4310
    sget v3, Lccsanandroidx/core/R$id;->action_image:I

    iget-object v4, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Lccsanandroidx/core/app/NotificationCompat$Builder;->mContext:Lccsanandroid/content/Context;

    .line 4311
    invoke-virtual {v4}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    sget v5, Lccsanandroidx/core/R$color;->ccsan_ccsan_notification_action_color_filter:I

    .line 4312
    invoke-virtual {v4, v5}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 4311
    invoke-virtual {p0, v2, v4}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createColoredBitmap(Lccsanandroidx/core/graphics/drawable/IconCompat;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    .line 4310
    invoke-virtual {v1, v3, v4}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    .line 4314
    :cond_2
    sget v3, Lccsanandroidx/core/R$id;->action_text:I

    iget-object v4, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4315
    if-nez v0, :cond_3

    .line 4316
    sget v3, Lccsanandroidx/core/R$id;->action_container:I

    iget-object v4, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->actionIntent:Lccsanandroid/app/PendingIntent;

    invoke-virtual {v1, v3, v4}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 4318
    :cond_3
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_4

    .line 4319
    sget v3, Lccsanandroidx/core/R$id;->action_container:I

    iget-object v4, p1, Lccsanandroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Lccsanandroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 4321
    :cond_4
    return-object v1
.end method

.method private static getNonContextualActions(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanandroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 4293
    .local p0, "actions":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/NotificationCompat$Action;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4294
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4295
    .local v0, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/app/NotificationCompat$Action;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/app/NotificationCompat$Action;

    .line 4296
    .local v2, "action":Lccsanandroidx/core/app/NotificationCompat$Action;
    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Action;->isContextual()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4297
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4299
    .end local v2    # "action":Lccsanandroidx/core/app/NotificationCompat$Action;
    :cond_1
    goto :goto_0

    .line 4300
    :cond_2
    return-object v0
.end method


# virtual methods
.method public apply(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 2
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 4200
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 4201
    invoke-interface {p1}, Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Lccsanandroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Lccsanandroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Lccsanandroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Notification$Builder;->setStyle(Lccsanandroid/app/Notification$Style;)Lccsanandroid/app/Notification$Builder;

    .line 4203
    :cond_0
    return-void
.end method

.method public displayCustomViewInline()Z
    .locals 1

    .line 4191
    const/4 v0, 0x1

    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 4182
    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    return-object v0
.end method

.method public makeBigContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 4228
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 4230
    return-object v1

    .line 4232
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getBigContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    .line 4233
    .local v0, "bigContentView":Lccsanandroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    .line 4234
    move-object v2, v0

    goto :goto_0

    .line 4235
    :cond_1
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v2

    :goto_0
    nop

    .line 4236
    .local v2, "innerView":Lccsanandroid/widget/RemoteViews;
    if-nez v2, :cond_2

    .line 4238
    return-object v1

    .line 4240
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Lccsanandroid/widget/RemoteViews;Z)Lccsanandroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public makeContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 4211
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 4213
    return-object v1

    .line 4215
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4217
    return-object v1

    .line 4219
    :cond_1
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Lccsanandroid/widget/RemoteViews;Z)Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView(Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;)Lccsanandroid/widget/RemoteViews;
    .locals 3
    .param p1, "builder"    # Lccsanandroidx/core/app/NotificationBuilderWithBuilderAccessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 4249
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 4251
    return-object v1

    .line 4253
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getHeadsUpContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    .line 4254
    .local v0, "headsUp":Lccsanandroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->mBuilder:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->getContentView()Lccsanandroid/widget/RemoteViews;

    move-result-object v2

    .line 4255
    .local v2, "innerView":Lccsanandroid/widget/RemoteViews;
    :goto_0
    if-nez v0, :cond_2

    .line 4257
    return-object v1

    .line 4259
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lccsanandroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;->createRemoteViews(Lccsanandroid/widget/RemoteViews;Z)Lccsanandroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method
