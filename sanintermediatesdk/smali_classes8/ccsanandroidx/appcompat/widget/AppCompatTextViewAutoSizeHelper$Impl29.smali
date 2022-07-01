.class Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;
.super Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl29"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;-><init>()V

    return-void
.end method


# virtual methods
.method computeAndSetTextDirection(Lccsanandroid/text/StaticLayout$Builder;Lccsanandroid/widget/TextView;)V
    .locals 1
    .param p1, "layoutBuilder"    # Lccsanandroid/text/StaticLayout$Builder;
    .param p2, "textView"    # Lccsanandroid/widget/TextView;

    .line 146
    invoke-virtual {p2}, Lccsanandroid/widget/TextView;->getTextDirectionHeuristic()Lccsanandroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/text/StaticLayout$Builder;->setTextDirection(Lccsanandroid/text/TextDirectionHeuristic;)Lccsanandroid/text/StaticLayout$Builder;

    .line 147
    return-void
.end method

.method isHorizontallyScrollable(Lccsanandroid/widget/TextView;)Z
    .locals 1
    .param p1, "textView"    # Lccsanandroid/widget/TextView;

    .line 140
    invoke-virtual {p1}, Lccsanandroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v0

    return v0
.end method
