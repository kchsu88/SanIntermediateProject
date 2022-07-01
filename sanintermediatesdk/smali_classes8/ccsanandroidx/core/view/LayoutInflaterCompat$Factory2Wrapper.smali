.class Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"

# interfaces
.implements Lccsanandroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory2Wrapper"
.end annotation


# instance fields
.field final mDelegateFactory:Lccsanandroidx/core/view/LayoutInflaterFactory;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/LayoutInflaterFactory;)V
    .locals 0
    .param p1, "delegateFactory"    # Lccsanandroidx/core/view/LayoutInflaterFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Lccsanandroidx/core/view/LayoutInflaterFactory;

    .line 45
    return-void
.end method


# virtual methods
.method public onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "parent"    # Lccsanandroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Lccsanandroid/content/Context;
    .param p4, "attributeSet"    # Lccsanandroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "name",
            "context",
            "attributeSet"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Lccsanandroidx/core/view/LayoutInflaterFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lccsanandroidx/core/view/LayoutInflaterFactory;->onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "context",
            "attrs"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Lccsanandroidx/core/view/LayoutInflaterFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lccsanandroidx/core/view/LayoutInflaterFactory;->onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Lccsanandroidx/core/view/LayoutInflaterFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
