.class Lccsanandroidx/core/provider/FontRequestWorker$2;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Lccsanandroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/provider/FontRequestWorker;->requestFontAsync(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Lccsanandroidx/core/provider/CallbackWithHandler;)Lccsanandroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/core/util/Consumer<",
        "Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lccsanandroidx/core/provider/CallbackWithHandler;


# direct methods
.method constructor <init>(Lccsanandroidx/core/provider/CallbackWithHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$callback"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lccsanandroidx/core/provider/FontRequestWorker$2;->val$callback:Lccsanandroidx/core/provider/CallbackWithHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 1
    .param p1, "typefaceResult"    # Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typefaceResult"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lccsanandroidx/core/provider/FontRequestWorker$2;->val$callback:Lccsanandroidx/core/provider/CallbackWithHandler;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/provider/CallbackWithHandler;->onTypefaceResult(Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    .line 175
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "typefaceResult"
        }
    .end annotation

    .line 171
    check-cast p1, Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-virtual {p0, p1}, Lccsanandroidx/core/provider/FontRequestWorker$2;->accept(Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    return-void
.end method
