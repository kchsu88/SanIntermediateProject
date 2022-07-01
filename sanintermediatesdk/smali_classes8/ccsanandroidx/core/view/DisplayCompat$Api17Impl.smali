.class Lccsanandroidx/core/view/DisplayCompat$Api17Impl;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRealSize(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Lccsanandroid/view/Display;
    .param p1, "displaySize"    # Lccsanandroid/graphics/Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "display",
            "displaySize"
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1}, Lccsanandroid/view/Display;->getRealSize(Lccsanandroid/graphics/Point;)V

    .line 312
    return-void
.end method
