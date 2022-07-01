.class Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateRequest;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateRequest"
.end annotation


# instance fields
.field callback:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

.field inflater:Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field parent:Lccsanandroid/view/ViewGroup;

.field resid:I

.field view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method
