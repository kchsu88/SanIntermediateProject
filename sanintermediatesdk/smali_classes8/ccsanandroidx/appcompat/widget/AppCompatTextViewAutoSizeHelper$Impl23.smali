.class Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;
.super Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl23"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method computeAndSetTextDirection(Lccsanandroid/text/StaticLayout$Builder;Lccsanandroid/widget/TextView;)V
    .locals 2
    .param p1, "layoutBuilder"    # Lccsanandroid/text/StaticLayout$Builder;
    .param p2, "textView"    # Lccsanandroid/widget/TextView;

    .line 127
    sget-object v0, Lccsanandroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Lccsanandroid/text/TextDirectionHeuristic;

    .line 128
    const-string v1, "getTextDirectionHeuristic"

    invoke-static {p2, v1, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/text/TextDirectionHeuristic;

    .line 130
    .local v0, "textDirectionHeuristic":Lccsanandroid/text/TextDirectionHeuristic;
    invoke-virtual {p1, v0}, Lccsanandroid/text/StaticLayout$Builder;->setTextDirection(Lccsanandroid/text/TextDirectionHeuristic;)Lccsanandroid/text/StaticLayout$Builder;

    .line 131
    return-void
.end method
