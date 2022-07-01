.class Lccsancom/google/android/material/textfield/IndicatorViewController$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "IndicatorViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/IndicatorViewController;

.field final synthetic val$captionToHide:I

.field final synthetic val$captionToShow:I

.field final synthetic val$captionViewToHide:Lccsanandroid/widget/TextView;

.field final synthetic val$captionViewToShow:Lccsanandroid/widget/TextView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/IndicatorViewController;ILccsanandroid/widget/TextView;ILccsanandroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/IndicatorViewController;

    .line 234
    iput-object p1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lccsancom/google/android/material/textfield/IndicatorViewController;

    iput p2, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    iput-object p3, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Lccsanandroid/widget/TextView;

    iput p4, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    iput-object p5, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Lccsanandroid/widget/TextView;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 237
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lccsancom/google/android/material/textfield/IndicatorViewController;

    iget v1, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    invoke-static {v0, v1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->access$002(Lccsancom/google/android/material/textfield/IndicatorViewController;I)I

    .line 238
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lccsancom/google/android/material/textfield/IndicatorViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/textfield/IndicatorViewController;->access$102(Lccsancom/google/android/material/textfield/IndicatorViewController;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;

    .line 239
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 240
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lccsancom/google/android/material/textfield/IndicatorViewController;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->access$200(Lccsancom/google/android/material/textfield/IndicatorViewController;)Lccsanandroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lccsancom/google/android/material/textfield/IndicatorViewController;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/IndicatorViewController;->access$200(Lccsancom/google/android/material/textfield/IndicatorViewController;)Lccsanandroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setTranslationY(F)V

    .line 248
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Lccsanandroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setAlpha(F)V

    .line 250
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 254
    iget-object v0, p0, Lccsancom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 257
    :cond_0
    return-void
.end method
