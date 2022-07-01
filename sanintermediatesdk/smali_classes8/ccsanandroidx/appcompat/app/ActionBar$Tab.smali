.class public abstract Lccsanandroidx/appcompat/app/ActionBar$Tab;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tab"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getCustomView()Lccsanandroid/view/View;
.end method

.method public abstract getIcon()Lccsanandroid/graphics/drawable/Drawable;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract select()V
.end method

.method public abstract setContentDescription(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setCustomView(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setCustomView(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setIcon(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setIcon(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setTabListener(Lccsanandroidx/appcompat/app/ActionBar$TabListener;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setTag(Ljava/lang/Object;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setText(I)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method

.method public abstract setText(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/ActionBar$Tab;
.end method
