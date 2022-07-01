.class final Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$7;
.super Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$1;)V

    return-void
.end method


# virtual methods
.method public getValue(Lccsanandroid/view/View;)F
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 155
    invoke-virtual {p1}, Lccsanandroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 147
    check-cast p1, Lccsanandroid/view/View;

    invoke-virtual {p0, p1}, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$7;->getValue(Lccsanandroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "value"    # F

    .line 150
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setRotationX(F)V

    .line 151
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 147
    check-cast p1, Lccsanandroid/view/View;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$7;->setValue(Lccsanandroid/view/View;F)V

    return-void
.end method
