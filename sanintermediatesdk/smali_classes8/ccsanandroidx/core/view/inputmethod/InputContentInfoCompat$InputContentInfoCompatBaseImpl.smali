.class final Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"

# interfaces
.implements Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputContentInfoCompatBaseImpl"
.end annotation


# instance fields
.field private final mContentUri:Lccsanandroid/net/Uri;

.field private final mDescription:Lccsanandroid/content/ClipDescription;

.field private final mLinkUri:Lccsanandroid/net/Uri;


# direct methods
.method constructor <init>(Lccsanandroid/net/Uri;Lccsanandroid/content/ClipDescription;Lccsanandroid/net/Uri;)V
    .locals 0
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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mContentUri:Lccsanandroid/net/Uri;

    .line 64
    iput-object p2, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mDescription:Lccsanandroid/content/ClipDescription;

    .line 65
    iput-object p3, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mLinkUri:Lccsanandroid/net/Uri;

    .line 66
    return-void
.end method


# virtual methods
.method public getContentUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 71
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mContentUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Lccsanandroid/content/ClipDescription;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mDescription:Lccsanandroid/content/ClipDescription;

    return-object v0
.end method

.method public getInputContentInfo()Ljava/lang/Object;
    .locals 1

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinkUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 83
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;->mLinkUri:Lccsanandroid/net/Uri;

    return-object v0
.end method

.method public releasePermission()V
    .locals 0

    .line 99
    return-void
.end method

.method public requestPermission()V
    .locals 0

    .line 94
    return-void
.end method
