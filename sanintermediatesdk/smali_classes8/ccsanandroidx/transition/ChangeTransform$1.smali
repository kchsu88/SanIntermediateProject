.class final Lccsanandroidx/transition/ChangeTransform$1;
.super Lccsanandroid/util/Property;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 70
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<[F>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {p0, p1}, Lccsanandroidx/transition/ChangeTransform$1;->get(Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;)[F

    move-result-object p1

    return-object p1
.end method

.method public get(Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;)[F
    .locals 1
    .param p1, "object"    # Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;[F)V
    .locals 0
    .param p1, "object"    # Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;
    .param p2, "value"    # [F

    .line 78
    invoke-virtual {p1, p2}, Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;->setValues([F)V

    .line 79
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/transition/ChangeTransform$1;->set(Lccsanandroidx/transition/ChangeTransform$PathAnimatorMatrix;[F)V

    return-void
.end method
