.class Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
.super Lccsanandroid/view/LayoutInflater;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicInflater"
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.app."

    aput-object v2, v0, v1

    sput-object v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 134
    invoke-direct {p0, p1}, Lccsanandroid/view/LayoutInflater;-><init>(Lccsanandroid/content/Context;)V

    .line 135
    return-void
.end method


# virtual methods
.method public cloneInContext(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Lccsanandroid/content/Context;

    .line 139
    new-instance v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 144
    sget-object v0, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 146
    .local v3, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v3, p2}, Lccsanandroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->createView(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v4, "view":Lccsanandroid/view/View;
    if-eqz v4, :cond_0

    .line 148
    return-object v4

    .line 153
    .end local v4    # "view":Lccsanandroid/view/View;
    :cond_0
    goto :goto_1

    .line 150
    :catch_0
    move-exception v4

    .line 144
    .end local v3    # "prefix":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Lccsanandroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method
