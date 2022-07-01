.class Lccsanandroidx/core/provider/FontRequestWorker$1;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/provider/FontRequestWorker;->requestFontSync(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Lccsanandroidx/core/provider/CallbackWithHandler;II)Lccsanandroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Lccsanandroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Lccsanandroidx/core/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$id",
            "val$context",
            "val$request",
            "val$style"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$context:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$request:Lccsanandroidx/core/provider/FontRequest;

    iput p4, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;
    .locals 4

    .line 120
    iget-object v0, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$request:Lccsanandroidx/core/provider/FontRequest;

    iget v3, p0, Lccsanandroidx/core/provider/FontRequestWorker$1;->val$style:I

    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;I)Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lccsanandroidx/core/provider/FontRequestWorker$1;->call()Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object v0

    return-object v0
.end method
