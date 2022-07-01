.class public final Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;,
        Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;,
        Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# direct methods
.method public constructor <init>(Lccsanandroid/net/Uri;Lccsanandroid/content/ClipDescription;Lccsanandroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Lccsanandroid/net/Uri;
    .param p2, "description"    # Lccsanandroid/content/ClipDescription;
    .param p3, "linkUri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentUri",
            "description",
            "linkUri"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 171
    new-instance v0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Lccsanandroid/net/Uri;Lccsanandroid/content/ClipDescription;Lccsanandroid/net/Uri;)V

    iput-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;-><init>(Lccsanandroid/net/Uri;Lccsanandroid/content/ClipDescription;Lccsanandroid/net/Uri;)V

    iput-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 175
    :goto_0
    return-void
.end method

.method private constructor <init>(Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V
    .locals 0
    .param p1, "impl"    # Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 179
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;
    .locals 3
    .param p0, "inputContentInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputContentInfo"
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 220
    return-object v0

    .line 222
    :cond_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    .line 223
    return-object v0

    .line 225
    :cond_1
    new-instance v0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;

    new-instance v1, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    invoke-direct {v1, p0}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V

    return-object v0
.end method


# virtual methods
.method public getContentUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 186
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getContentUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lccsanandroid/content/ClipDescription;
    .locals 1

    .line 196
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getDescription()Lccsanandroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public getLinkUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 204
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getLinkUri()Lccsanandroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public releasePermission()V
    .locals 1

    .line 256
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->releasePermission()V

    .line 257
    return-void
.end method

.method public requestPermission()V
    .locals 1

    .line 247
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->requestPermission()V

    .line 248
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .line 238
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getInputContentInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
