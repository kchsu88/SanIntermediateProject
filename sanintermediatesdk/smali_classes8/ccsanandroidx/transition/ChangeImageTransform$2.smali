.class final Lccsanandroidx/transition/ChangeImageTransform$2;
.super Lccsanandroid/util/Property;
.source "ChangeImageTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/ChangeImageTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroid/widget/ImageView;",
        "Lccsanandroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 62
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Lccsanandroid/graphics/Matrix;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;
    .locals 1
    .param p1, "object"    # Lccsanandroid/widget/ImageView;

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lccsanandroidx/transition/ChangeImageTransform$2;->get(Lccsanandroid/widget/ImageView;)Lccsanandroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/ImageView;
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 65
    invoke-static {p1, p2}, Lccsanandroidx/transition/ImageViewUtils;->animateTransform(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V

    .line 66
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lccsanandroid/widget/ImageView;

    check-cast p2, Lccsanandroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/ChangeImageTransform$2;->set(Lccsanandroid/widget/ImageView;Lccsanandroid/graphics/Matrix;)V

    return-void
.end method
