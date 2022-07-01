.class public abstract Lccsancom/google/android/material/shape/ShapePath$PathOperation;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PathOperation"
.end annotation


# instance fields
.field protected final matrix:Lccsanandroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapePath$PathOperation;->matrix:Lccsanandroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract applyToPath(Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Path;)V
.end method
