.class public Lccsanandroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeEffectFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory$EdgeDirection;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_TOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Lccsanandroidx/recyclerview/widget/RecyclerView;I)Lccsanandroid/widget/EdgeEffect;
    .locals 2
    .param p1, "view"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "direction"    # I

    .line 5623
    new-instance v0, Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/EdgeEffect;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method
