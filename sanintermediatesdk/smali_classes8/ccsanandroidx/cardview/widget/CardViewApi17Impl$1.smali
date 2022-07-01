.class Lccsanandroidx/cardview/widget/CardViewApi17Impl$1;
.super Ljava/lang/Object;
.source "CardViewApi17Impl.java"

# interfaces
.implements Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/cardview/widget/CardViewApi17Impl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/cardview/widget/CardViewApi17Impl;


# direct methods
.method constructor <init>(Lccsanandroidx/cardview/widget/CardViewApi17Impl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/cardview/widget/CardViewApi17Impl;

    .line 30
    iput-object p1, p0, Lccsanandroidx/cardview/widget/CardViewApi17Impl$1;->this$0:Lccsanandroidx/cardview/widget/CardViewApi17Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;FLccsanandroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "bounds"    # Lccsanandroid/graphics/RectF;
    .param p3, "cornerRadius"    # F
    .param p4, "paint"    # Lccsanandroid/graphics/Paint;

    .line 34
    invoke-virtual {p1, p2, p3, p3, p4}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 35
    return-void
.end method
