.class Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BorderState"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;->this$0:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;
    .param p2, "x1"    # Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$1;

    .line 263
    invoke-direct {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;-><init>(Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 268
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;->this$0:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    return-object v0
.end method
