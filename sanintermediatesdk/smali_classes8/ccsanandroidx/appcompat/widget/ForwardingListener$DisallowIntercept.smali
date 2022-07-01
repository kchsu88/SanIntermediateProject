.class Lccsanandroidx/appcompat/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ForwardingListener;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ForwardingListener;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ForwardingListener$DisallowIntercept;->this$0:Lccsanandroidx/appcompat/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 321
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ForwardingListener$DisallowIntercept;->this$0:Lccsanandroidx/appcompat/widget/ForwardingListener;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ForwardingListener;->mSrc:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 322
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 323
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsanandroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 325
    :cond_0
    return-void
.end method
