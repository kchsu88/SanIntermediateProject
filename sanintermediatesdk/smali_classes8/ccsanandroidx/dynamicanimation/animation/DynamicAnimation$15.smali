.class Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;
.super Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/dynamicanimation/animation/DynamicAnimation;

.field final synthetic val$floatValueHolder:Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor <init>(Lccsanandroidx/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/dynamicanimation/animation/DynamicAnimation;
    .param p2, "name"    # Ljava/lang/String;

    .line 335
    .local p0, "this":Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;, "Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;"
    iput-object p1, p0, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;->this$0:Lccsanandroidx/dynamicanimation/animation/DynamicAnimation;

    iput-object p3, p0, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 338
    .local p0, "this":Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;, "Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0}, Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .line 343
    .local p0, "this":Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;, "Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lccsanandroidx/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0, p2}, Lccsanandroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 344
    return-void
.end method
