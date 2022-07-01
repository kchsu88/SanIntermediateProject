.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$5;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;


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

    .line 1003
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$5;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .locals 0

    .line 1005
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1009
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$5;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->dismissPopups()V

    .line 1010
    return-void
.end method
