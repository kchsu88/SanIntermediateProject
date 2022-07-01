.class Lccsanandroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvdcInflateDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method


# virtual methods
.method public createFromXmlInner(Lccsanandroid/content/Context;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "theme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 527
    nop

    .line 528
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AvdcInflateDelegate"

    const-string v2, "Exception while inflating <animated-vector>"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v1, 0x0

    return-object v1
.end method
