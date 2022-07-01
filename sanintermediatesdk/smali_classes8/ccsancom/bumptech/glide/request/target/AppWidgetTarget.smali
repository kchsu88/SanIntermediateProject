.class public Lccsancom/bumptech/glide/request/target/AppWidgetTarget;
.super Lccsancom/bumptech/glide/request/target/SimpleTarget;
.source "AppWidgetTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/request/target/SimpleTarget<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentName:Lccsanandroid/content/ComponentName;

.field private final context:Lccsanandroid/content/Context;

.field private final remoteViews:Lccsanandroid/widget/RemoteViews;

.field private final viewId:I

.field private final widgetIds:[I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;IIILccsanandroid/content/ComponentName;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "remoteViews"    # Lccsanandroid/widget/RemoteViews;
    .param p3, "viewId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "componentName"    # Lccsanandroid/content/ComponentName;

    .line 90
    invoke-direct {p0, p4, p5}, Lccsancom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 91
    if-eqz p1, :cond_2

    .line 94
    if-eqz p6, :cond_1

    .line 97
    if-eqz p2, :cond_0

    .line 100
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->context:Lccsanandroid/content/Context;

    .line 101
    iput-object p2, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Lccsanandroid/widget/RemoteViews;

    .line 102
    iput p3, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    .line 103
    iput-object p6, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Lccsanandroid/content/ComponentName;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    .line 105
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ComponentName can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;III[I)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "remoteViews"    # Lccsanandroid/widget/RemoteViews;
    .param p3, "viewId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "widgetIds"    # [I

    .line 43
    invoke-direct {p0, p4, p5}, Lccsancom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 44
    if-eqz p1, :cond_3

    .line 47
    if-eqz p6, :cond_2

    .line 50
    array-length v0, p6

    if-eqz v0, :cond_1

    .line 53
    if-eqz p2, :cond_0

    .line 56
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->context:Lccsanandroid/content/Context;

    .line 57
    iput-object p2, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Lccsanandroid/widget/RemoteViews;

    .line 58
    iput p3, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    .line 59
    iput-object p6, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Lccsanandroid/content/ComponentName;

    .line 61
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WidgetIds must have length > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "WidgetIds can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;ILccsanandroid/content/ComponentName;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "remoteViews"    # Lccsanandroid/widget/RemoteViews;
    .param p3, "viewId"    # I
    .param p4, "componentName"    # Lccsanandroid/content/ComponentName;

    .line 117
    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;IIILccsanandroid/content/ComponentName;)V

    .line 118
    return-void
.end method

.method public varargs constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;I[I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "remoteViews"    # Lccsanandroid/widget/RemoteViews;
    .param p3, "viewId"    # I
    .param p4, "widgetIds"    # [I

    .line 73
    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Lccsanandroid/content/Context;Lccsanandroid/widget/RemoteViews;III[I)V

    .line 74
    return-void
.end method

.method private update()V
    .locals 3

    .line 124
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroid/appwidget/AppWidgetManager;->getInstance(Lccsanandroid/content/Context;)Lccsanandroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 125
    .local v0, "appWidgetManager":Lccsanandroid/appwidget/AppWidgetManager;
    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->componentName:Lccsanandroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Lccsanandroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/appwidget/AppWidgetManager;->updateAppWidget(Lccsanandroid/content/ComponentName;Lccsanandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->widgetIds:[I

    iget-object v2, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Lccsanandroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/appwidget/AppWidgetManager;->updateAppWidget([ILccsanandroid/widget/RemoteViews;)V

    .line 130
    :goto_0
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

    .line 134
    .local p2, "glideAnimation":Lccsancom/bumptech/glide/request/animation/GlideAnimation;, "Lccsancom/bumptech/glide/request/animation/GlideAnimation<-Lccsanandroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->remoteViews:Lccsanandroid/widget/RemoteViews;

    iget v1, p0, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->viewId:I

    invoke-virtual {v0, v1, p1}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    .line 135
    invoke-direct {p0}, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->update()V

    .line 136
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lccsancom/bumptech/glide/request/animation/GlideAnimation;

    .line 21
    move-object v0, p1

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/request/target/AppWidgetTarget;->onResourceReady(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
