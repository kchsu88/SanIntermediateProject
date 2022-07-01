.class public abstract Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;
.super Ljava/lang/Object;
.source "FloatPropertyCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    .local p0, "this":Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;, "Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;->mPropertyName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static createFloatPropertyCompat(Lccsanandroid/util/FloatProperty;)Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroid/util/FloatProperty<",
            "TT;>;)",
            "Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TT;>;"
        }
    .end annotation

    .line 58
    .local p0, "property":Lccsanandroid/util/FloatProperty;, "Lccsanandroid/util/FloatProperty<TT;>;"
    new-instance v0, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat$1;

    invoke-virtual {p0}, Lccsanandroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat$1;-><init>(Ljava/lang/String;Lccsanandroid/util/FloatProperty;)V

    return-object v0
.end method


# virtual methods
.method public abstract getValue(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method
