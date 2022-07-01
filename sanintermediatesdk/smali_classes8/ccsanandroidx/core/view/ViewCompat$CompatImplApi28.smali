.class Lccsanandroidx/core/view/ViewCompat$CompatImplApi28;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatImplApi28"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4002
    return-void
.end method

.method static addOnUnhandledKeyEventListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "listener"    # Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 4008
    sget v0, Lccsanandroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4010
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/collection/SimpleArrayMap;

    .line 4011
    .local v0, "viewListeners":Lccsanandroidx/collection/SimpleArrayMap;, "Lccsanandroidx/collection/SimpleArrayMap<Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;Lccsanandroid/view/View$OnUnhandledKeyEventListener;>;"
    if-nez v0, :cond_0

    .line 4012
    new-instance v1, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    move-object v0, v1

    .line 4013
    sget v1, Lccsanandroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v1, v0}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4016
    :cond_0
    new-instance v1, Lccsanandroidx/core/view/ViewCompat$CompatImplApi28$1;

    invoke-direct {v1, p1}, Lccsanandroidx/core/view/ViewCompat$CompatImplApi28$1;-><init>(Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 4023
    .local v1, "fwListener":Lccsanandroid/view/View$OnUnhandledKeyEventListener;
    invoke-virtual {v0, p1, v1}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4024
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->addOnUnhandledKeyEventListener(Lccsanandroid/view/View$OnUnhandledKeyEventListener;)V

    .line 4025
    return-void
.end method

.method static removeOnUnhandledKeyEventListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "listener"    # Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 4031
    sget v0, Lccsanandroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4033
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/collection/SimpleArrayMap;

    .line 4034
    .local v0, "viewListeners":Lccsanandroidx/collection/SimpleArrayMap;, "Lccsanandroidx/collection/SimpleArrayMap<Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;Lccsanandroid/view/View$OnUnhandledKeyEventListener;>;"
    if-nez v0, :cond_0

    .line 4035
    return-void

    .line 4037
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View$OnUnhandledKeyEventListener;

    .line 4038
    .local v1, "fwListener":Lccsanandroid/view/View$OnUnhandledKeyEventListener;
    if-eqz v1, :cond_1

    .line 4039
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->removeOnUnhandledKeyEventListener(Lccsanandroid/view/View$OnUnhandledKeyEventListener;)V

    .line 4041
    :cond_1
    return-void
.end method
