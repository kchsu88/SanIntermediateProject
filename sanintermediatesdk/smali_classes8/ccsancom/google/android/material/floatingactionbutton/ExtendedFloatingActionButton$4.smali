.class final Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;
.super Lccsanandroid/util/Property;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsanandroid/view/View;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 709
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lccsanandroid/view/View;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lccsanandroid/view/View;

    .line 719
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 709
    check-cast p1, Lccsanandroid/view/View;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->get(Lccsanandroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lccsanandroid/view/View;Ljava/lang/Float;)V
    .locals 2
    .param p1, "object"    # Lccsanandroid/view/View;
    .param p2, "value"    # Ljava/lang/Float;

    .line 712
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 713
    invoke-virtual {p1}, Lccsanandroid/view/View;->requestLayout()V

    .line 714
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 709
    check-cast p1, Lccsanandroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->set(Lccsanandroid/view/View;Ljava/lang/Float;)V

    return-void
.end method
