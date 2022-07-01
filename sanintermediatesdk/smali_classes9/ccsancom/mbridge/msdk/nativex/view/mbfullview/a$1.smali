.class final Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;
.super Ljava/lang/Object;
.source "FullViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

.field final synthetic b:Z

.field final synthetic c:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V
    .locals 0

    .line 178
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->c:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->a:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 181
    const-string v0, "#ff4c8fdf"

    invoke-static {v0}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->a:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->a:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->b:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 184
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->c:Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a$1;->a:Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;->getmAnimationPlayer()Lccsanandroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;Lccsanandroid/view/View;)V

    .line 185
    return-void
.end method
