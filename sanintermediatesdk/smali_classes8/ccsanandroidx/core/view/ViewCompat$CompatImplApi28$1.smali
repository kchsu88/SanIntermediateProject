.class Lccsanandroidx/core/view/ViewCompat$CompatImplApi28$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Lccsanandroid/view/View$OnUnhandledKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/ViewCompat$CompatImplApi28;->addOnUnhandledKeyEventListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .line 4016
    iput-object p1, p0, Lccsanandroidx/core/view/ViewCompat$CompatImplApi28$1;->val$listener:Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKeyEvent(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 4019
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$CompatImplApi28$1;->val$listener:Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
