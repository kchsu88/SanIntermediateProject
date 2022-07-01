.class public Lccsansan/bw/setAdSize;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(Lccsanandroid/view/View;II)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12
    iput p1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iput p2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/widget/ImageView;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {p0}, Lccsanandroid/widget/ImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lccsansan/bw/setAdSize;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;I)V

    .line 9
    const-string p1, "ViewUtils"

    const-string v1, "Caught OutOfMemoryError while attempting to setImageResource"

    invoke-static {p1, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/view/View;)Z
    .locals 2

    .line 28
    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lccsansan/bw/setAdSize;->removeDownloadListener(Lccsanandroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public static removeDownloadListener(Lccsanandroid/view/View;J)Z
    .locals 6

    const-string v0, "san__b_click_frequently_tag"

    .line 29
    :try_start_0
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 30
    :cond_0
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 31
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v5, v1, p1

    if-gez v5, :cond_1

    const/4 p0, 0x1

    return p0

    .line 37
    :cond_1
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;I)V
    .locals 2

    .line 15
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 17
    instance-of v1, p0, Lccsanandroid/app/Activity;

    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lccsanandroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p0, "view"

    .line 21
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "resId"

    .line 22
    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 23
    :cond_0
    :try_start_0
    instance-of v1, p0, Lccsanandroid/app/Activity;

    if-eqz v1, :cond_2

    .line 24
    move-object v1, p0

    check-cast v1, Lccsanandroid/app/Activity;

    invoke-virtual {v1}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 27
    :cond_1
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    check-cast p0, Lccsanandroid/app/Activity;

    invoke-virtual {p0}, Lccsanandroid/app/Activity;->isDestroyed()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    return v0
.end method
