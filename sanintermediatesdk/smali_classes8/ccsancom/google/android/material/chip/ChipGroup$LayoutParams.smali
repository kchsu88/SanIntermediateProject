.class public Lccsancom/google/android/material/chip/ChipGroup$LayoutParams;
.super Lccsanandroid/view/ViewGroup$MarginLayoutParams;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 83
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 75
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 79
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 87
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 88
    return-void
.end method
