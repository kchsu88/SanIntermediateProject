.class public Lccsancom/bumptech/glide/request/target/NotificationTarget;
.super Lccsancom/bumptech/glide/request/target/SimpleTarget;
.source "NotificationTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/SimpleTarget<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final notification:Lccsanandroid/app/Notification;

.field private final notificationId:I

.field private final remoteViews:Lccsanandroid/widget/RemoteViews;

.field private final viewId:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;IIILccsanandroid/app/Notification;I)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "remoteViews"    # Lccsanandroid/widget/RemoteViews;
    .param p3, "viewId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "notification"    # Lccsanandroid/app/Notification;
    .param p7, "notificationId"    # I

    .line 59
    invoke-direct {p0, p4, p5}, Lccsancom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 60
    if-eqz p1, :cond_2

    .line 63
    if-eqz p6, :cond_1

    .line 66
    if-eqz p2, :cond_0

    .line 69
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->context:Lccsanandroid/content/Context;

    .line 70
    iput p3, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    .line 71
    iput-object p6, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->notification:Lccsanandroid/app/Notification;

    .line 72
    iput p7, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    .line 73
    iput-object p2, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Lccsanandroid/widget/RemoteViews;

    .line 74
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Notification object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;ILccsanandroid/app/Notification;I)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "remoteViews"    # Lccsanandroid/widget/RemoteViews;
    .param p3, "viewId"    # I
    .param p4, "notification"    # Lccsanandroid/app/Notification;
    .param p5, "notificationId"    # I

    .line 40
    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lccsancom/bumptech/glide/request/target/NotificationTarget;-><init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;IIILccsanandroid/app/Notification;I)V

    .line 41
    return-void
.end method

.method private update()V
    .locals 3

    .line 80
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->context:Lccsanandroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 82
    .local v0, "manager":Lccsanandroid/app/NotificationManager;
    iget v1, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->notificationId:I

    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->notification:Lccsanandroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onResourceReady(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 2
    .param p1, "resource"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsancom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p2, "glideAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-Lccsanandroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->remoteViews:Lccsanandroid/widget/RemoteViews;

    iget v1, p0, Lccsancom/bumptech/glide/request/target/NotificationTarget;->viewId:I

    invoke-virtual {v0, v1, p1}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    .line 88
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/NotificationTarget;->update()V

    .line 89
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 20
    move-object v0, p1

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/request/target/NotificationTarget;->onResourceReady(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
