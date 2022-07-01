.class public interface abstract Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Lccsancom/google/android/material/circularreveal/CircularRevealHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;,
        Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;,
        Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;,
        Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    }
.end annotation


# virtual methods
.method public abstract buildCircularRevealCache()V
.end method

.method public abstract destroyCircularRevealCache()V
.end method

.method public abstract draw(Lccsanandroid/graphics/Canvas;)V
.end method

.method public abstract getCircularRevealOverlayDrawable()Lccsanandroid/graphics/drawable/Drawable;
.end method

.method public abstract getCircularRevealScrimColor()I
.end method

.method public abstract getRevealInfo()Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setCircularRevealOverlayDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCircularRevealScrimColor(I)V
.end method

.method public abstract setRevealInfo(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
.end method
