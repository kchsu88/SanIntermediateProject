.class Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method computeAndSetTextDirection(Lccsanandroid/text/StaticLayout$Builder;Lccsanandroid/widget/TextView;)V
    .locals 0
    .param p1, "layoutBuilder"    # Lccsanandroid/text/StaticLayout$Builder;
    .param p2, "textView"    # Lccsanandroid/widget/TextView;

    .line 117
    return-void
.end method

.method isHorizontallyScrollable(Lccsanandroid/widget/TextView;)Z
    .locals 2
    .param p1, "textView"    # Lccsanandroid/widget/TextView;

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "getHorizontallyScrolling"

    invoke-static {p1, v1, v0}, Lccsanandroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
