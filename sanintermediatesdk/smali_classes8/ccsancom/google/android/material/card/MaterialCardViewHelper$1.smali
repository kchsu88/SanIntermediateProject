.class Lccsancom/google/android/material/card/MaterialCardViewHelper$1;
.super Lccsanandroid/graphics/drawable/InsetDrawable;
.source "MaterialCardViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/card/MaterialCardViewHelper;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/card/MaterialCardViewHelper;Lccsanandroid/graphics/drawable/Drawable;IIII)V
    .locals 6
    .param p1, "this$0"    # Lccsancom/google/android/material/card/MaterialCardViewHelper;
    .param p2, "arg0"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .line 508
    iput-object p1, p0, Lccsancom/google/android/material/card/MaterialCardViewHelper$1;->this$0:Lccsancom/google/android/material/card/MaterialCardViewHelper;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lccsanandroid/graphics/drawable/InsetDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 1

    .line 525
    const/4 v0, -0x1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 519
    const/4 v0, -0x1

    return v0
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 513
    const/4 v0, 0x0

    return v0
.end method
