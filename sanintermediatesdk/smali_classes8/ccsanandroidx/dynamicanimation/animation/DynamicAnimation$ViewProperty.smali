.class public abstract Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.super Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lccsanandroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 48
    invoke-direct {p0, p1}, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method
