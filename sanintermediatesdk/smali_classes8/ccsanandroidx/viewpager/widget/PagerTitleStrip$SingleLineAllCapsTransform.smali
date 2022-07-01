.class Lccsanandroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
.super Lccsanandroid/text/method/SingleLineTransformationMethod;
.source "PagerTitleStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager/widget/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleLineAllCapsTransform"
.end annotation


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 93
    invoke-direct {p0}, Lccsanandroid/text/method/SingleLineTransformationMethod;-><init>()V

    .line 94
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lccsanandroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;

    .line 95
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Lccsanandroid/view/View;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 99
    invoke-super {p0, p1, p2}, Lccsanandroid/text/method/SingleLineTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
