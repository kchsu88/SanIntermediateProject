.class final Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat$1;
.super Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "FloatPropertyCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;->createFloatPropertyCompat(Lccsanandroid/util/FloatProperty;)Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$property:Lccsanandroid/util/FloatProperty;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/util/FloatProperty;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Lccsanandroid/util/FloatProperty;

    invoke-direct {p0, p1}, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 61
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Lccsanandroid/util/FloatProperty;

    invoke-virtual {v0, p1}, Lccsanandroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 66
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat$1;->val$property:Lccsanandroid/util/FloatProperty;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 67
    return-void
.end method
