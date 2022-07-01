.class public Lccsanandroidx/appcompat/text/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Lccsanandroid/text/method/TransformationMethod;


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lccsanandroidx/appcompat/text/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 39
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Lccsanandroid/view/View;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/appcompat/text/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onFocusChanged(Lccsanandroid/view/View;Ljava/lang/CharSequence;ZILccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Lccsanandroid/graphics/Rect;

    .line 49
    return-void
.end method
