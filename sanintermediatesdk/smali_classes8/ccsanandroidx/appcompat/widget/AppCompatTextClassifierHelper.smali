.class final Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;
.super Ljava/lang/Object;
.source "AppCompatTextClassifierHelper.java"


# instance fields
.field private mTextClassifier:Lccsanandroid/view/textclassifier/TextClassifier;

.field private mTextView:Lccsanandroid/widget/TextView;


# direct methods
.method constructor <init>(Lccsanandroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Lccsanandroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;->mTextView:Lccsanandroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method public getTextClassifier()Lccsanandroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 62
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;->mTextClassifier:Lccsanandroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;->mTextView:Lccsanandroid/widget/TextView;

    .line 64
    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-class v1, Lccsanandroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/textclassifier/TextClassificationManager;

    .line 65
    .local v0, "tcm":Lccsanandroid/view/textclassifier/TextClassificationManager;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lccsanandroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Lccsanandroid/view/textclassifier/TextClassifier;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    sget-object v1, Lccsanandroid/view/textclassifier/TextClassifier;->NO_OP:Lccsanandroid/view/textclassifier/TextClassifier;

    return-object v1

    .line 70
    .end local v0    # "tcm":Lccsanandroid/view/textclassifier/TextClassificationManager;
    :cond_1
    return-object v0
.end method

.method public setTextClassifier(Lccsanandroid/view/textclassifier/TextClassifier;)V
    .locals 0
    .param p1, "textClassifier"    # Lccsanandroid/view/textclassifier/TextClassifier;

    .line 51
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatTextClassifierHelper;->mTextClassifier:Lccsanandroid/view/textclassifier/TextClassifier;

    .line 52
    return-void
.end method
