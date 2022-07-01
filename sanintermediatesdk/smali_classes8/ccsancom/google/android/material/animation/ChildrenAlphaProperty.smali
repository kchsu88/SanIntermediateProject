.class public Lccsancom/google/android/material/animation/ChildrenAlphaProperty;
.super Lccsanandroid/util/Property;
.source "ChildrenAlphaProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroid/view/ViewGroup;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHILDREN_ALPHA:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/ViewGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;

    const-string v1, "childrenAlpha"

    invoke-direct {v0, v1}, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lccsanandroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/view/ViewGroup;)Ljava/lang/Float;
    .locals 2
    .param p1, "object"    # Lccsanandroid/view/ViewGroup;

    .line 48
    sget v0, Lccsancom/google/android/material/R$id;->mtrl_internal_children_alpha_tag:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 49
    .local v0, "alpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 50
    return-object v0

    .line 52
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;->get(Lccsanandroid/view/ViewGroup;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/view/ViewGroup;Ljava/lang/Float;)V
    .locals 4
    .param p1, "object"    # Lccsanandroid/view/ViewGroup;
    .param p2, "value"    # Ljava/lang/Float;

    .line 58
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 60
    .local v0, "alpha":F
    sget v1, Lccsancom/google/android/material/R$id;->mtrl_internal_children_alpha_tag:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lccsanandroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 63
    invoke-virtual {p1, v1}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "child":Lccsanandroid/view/View;
    invoke-virtual {v3, v0}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 62
    .end local v3    # "child":Lccsanandroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lccsanandroid/view/ViewGroup;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/animation/ChildrenAlphaProperty;->set(Lccsanandroid/view/ViewGroup;Ljava/lang/Float;)V

    return-void
.end method
