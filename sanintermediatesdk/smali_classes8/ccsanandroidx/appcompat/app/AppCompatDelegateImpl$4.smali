.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Lccsanandroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    .line 960
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$4;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Lccsanandroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroid/graphics/Rect;

    .line 963
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$4;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->updateStatusGuard(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Lccsanandroid/graphics/Rect;->top:I

    .line 964
    return-void
.end method
