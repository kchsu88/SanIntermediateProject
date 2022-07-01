.class Lccsancom/google/android/material/slider/BaseSlider$1;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Lccsancom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/slider/BaseSlider;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/slider/BaseSlider;

.field final synthetic val$attrs:Lccsanandroid/util/AttributeSet;

.field final synthetic val$defStyleAttr:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/slider/BaseSlider;Lccsanandroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/slider/BaseSlider;

    .line 357
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider$1;, "Lccsancom/google/android/material/slider/BaseSlider$1;"
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider$1;->this$0:Lccsancom/google/android/material/slider/BaseSlider;

    iput-object p2, p0, Lccsancom/google/android/material/slider/BaseSlider$1;->val$attrs:Lccsanandroid/util/AttributeSet;

    iput p3, p0, Lccsancom/google/android/material/slider/BaseSlider$1;->val$defStyleAttr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTooltipDrawable()Lccsancom/google/android/material/tooltip/TooltipDrawable;
    .locals 7

    .line 360
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider$1;, "Lccsancom/google/android/material/slider/BaseSlider$1;"
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider$1;->this$0:Lccsancom/google/android/material/slider/BaseSlider;

    .line 362
    invoke-virtual {v0}, Lccsancom/google/android/material/slider/BaseSlider;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider$1;->val$attrs:Lccsanandroid/util/AttributeSet;

    sget-object v3, Lccsancom/google/android/material/R$styleable;->Slider:[I

    iget v4, p0, Lccsancom/google/android/material/slider/BaseSlider$1;->val$defStyleAttr:I

    sget v5, Lccsancom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 361
    invoke-static/range {v1 .. v6}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 363
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    iget-object v1, p0, Lccsancom/google/android/material/slider/BaseSlider$1;->this$0:Lccsancom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lccsancom/google/android/material/slider/BaseSlider;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/google/android/material/slider/BaseSlider;->access$000(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;)Lccsancom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v1

    .line 364
    .local v1, "d":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 365
    return-object v1
.end method
