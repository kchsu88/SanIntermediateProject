.class Lccsanandroidx/cardview/widget/CardViewApi17Impl;
.super Lccsanandroidx/cardview/widget/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lccsanandroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .line 29
    new-instance v0, Lccsanandroidx/cardview/widget/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Lccsanandroidx/cardview/widget/CardViewApi17Impl$1;-><init>(Lccsanandroidx/cardview/widget/CardViewApi17Impl;)V

    sput-object v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 37
    return-void
.end method
