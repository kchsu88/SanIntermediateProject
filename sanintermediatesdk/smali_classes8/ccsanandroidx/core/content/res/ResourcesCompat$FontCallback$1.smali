.class Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$1;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Lccsanandroid/graphics/Typeface;Lccsanandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$typeface:Lccsanandroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/graphics/Typeface;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$typeface"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$1;->this$0:Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;

    iput-object p2, p0, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$1;->val$typeface:Lccsanandroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 439
    iget-object v0, p0, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$1;->this$0:Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object v1, p0, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback$1;->val$typeface:Lccsanandroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Lccsanandroid/graphics/Typeface;)V

    .line 440
    return-void
.end method
