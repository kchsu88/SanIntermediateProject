.class Lccsanandroidx/core/provider/CallbackWithHandler$1;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/provider/CallbackWithHandler;->onTypefaceRetrieved(Lccsanandroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/provider/CallbackWithHandler;

.field final synthetic val$callback:Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$typeface:Lccsanandroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lccsanandroidx/core/provider/CallbackWithHandler;Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;Lccsanandroid/graphics/Typeface;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/provider/CallbackWithHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$typeface"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lccsanandroidx/core/provider/CallbackWithHandler$1;->this$0:Lccsanandroidx/core/provider/CallbackWithHandler;

    iput-object p2, p0, Lccsanandroidx/core/provider/CallbackWithHandler$1;->val$callback:Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iput-object p3, p0, Lccsanandroidx/core/provider/CallbackWithHandler$1;->val$typeface:Lccsanandroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lccsanandroidx/core/provider/CallbackWithHandler$1;->val$callback:Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Lccsanandroidx/core/provider/CallbackWithHandler$1;->val$typeface:Lccsanandroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRetrieved(Lccsanandroid/graphics/Typeface;)V

    .line 59
    return-void
.end method
