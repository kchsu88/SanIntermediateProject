.class public Lccsanandroidx/core/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;,
        Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;,
        Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;,
        Lccsanandroidx/core/provider/FontsContractCompat$Columns;
    }
.end annotation


# static fields
.field public static final PARCEL_FONT_RESULTS:Ljava/lang/String; = "font_results"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final RESULT_CODE_PROVIDER_NOT_FOUND:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final RESULT_CODE_WRONG_CERTIFICATES:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTypeface(Lccsanandroid/content/Context;Lccsanandroid/os/CancellationSignal;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;)Lccsanandroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p2, "fonts"    # [Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancellationSignal",
            "fonts"
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsanandroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Lccsanandroid/content/Context;Lccsanandroid/os/CancellationSignal;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static fetchFonts(Lccsanandroid/content/Context;Lccsanandroid/os/CancellationSignal;Lccsanandroidx/core/provider/FontRequest;)Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .param p2, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancellationSignal",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 102
    invoke-static {p0, p2, p1}, Lccsanandroidx/core/provider/FontProvider;->getFontFamilyResult(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/os/CancellationSignal;)Lccsanandroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v0

    return-object v0
.end method

.method public static getFontSync(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZII)Lccsanandroid/graphics/Typeface;
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p2, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p3, "handler"    # Lccsanandroid/os/Handler;
    .param p4, "isBlockingFetch"    # Z
    .param p5, "timeout"    # I
    .param p6, "style"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "request",
            "fontCallback",
            "handler",
            "isBlockingFetch",
            "timeout",
            "style"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    new-instance v6, Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    invoke-direct {v6, p2}, Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;-><init>(Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;)V

    .line 553
    .local v6, "newCallback":Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;
    invoke-static {p3}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->getHandler(Lccsanandroid/os/Handler;)Lccsanandroid/os/Handler;

    move-result-object v7

    .line 554
    .local v7, "newHandler":Lccsanandroid/os/Handler;
    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move v3, p4

    move v4, p5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lccsanandroidx/core/provider/FontsContractCompat;->requestFont(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;IZILccsanandroid/os/Handler;Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getProvider(Lccsanandroid/content/pm/PackageManager;Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/content/res/Resources;)Lccsanandroid/content/pm/ProviderInfo;
    .locals 1
    .param p0, "packageManager"    # Lccsanandroid/content/pm/PackageManager;
    .param p1, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p2, "resources"    # Lccsanandroid/content/res/Resources;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageManager",
            "request",
            "resources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 610
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/provider/FontProvider;->getProvider(Lccsanandroid/content/pm/PackageManager;Lccsanandroidx/core/provider/FontRequest;Lccsanandroid/content/res/Resources;)Lccsanandroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static prepareFontData(Lccsanandroid/content/Context;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;Lccsanandroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "fonts"    # [Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "cancellationSignal"    # Lccsanandroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fonts",
            "cancellationSignal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "[",
            "Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;",
            "Lccsanandroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Lccsanandroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/graphics/TypefaceCompatUtil;->readFontInfoIntoByteBuffer(Lccsanandroid/content/Context;[Lccsanandroidx/core/provider/FontsContractCompat$FontInfo;Lccsanandroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static requestFont(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;IZILccsanandroid/os/Handler;Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;)Lccsanandroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p2, "style"    # I
    .param p3, "isBlockingFetch"    # Z
    .param p4, "timeout"    # I
    .param p5, "handler"    # Lccsanandroid/os/Handler;
    .param p6, "callback"    # Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "context",
            "request",
            "style",
            "isBlockingFetch",
            "timeout",
            "handler",
            "callback"
        }
    .end annotation

    .line 163
    new-instance v0, Lccsanandroidx/core/provider/CallbackWithHandler;

    invoke-direct {v0, p6, p5}, Lccsanandroidx/core/provider/CallbackWithHandler;-><init>(Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;Lccsanandroid/os/Handler;)V

    .line 165
    .local v0, "callbackWrapper":Lccsanandroidx/core/provider/CallbackWithHandler;
    if-eqz p3, :cond_0

    .line 166
    invoke-static {p0, p1, v0, p2, p4}, Lccsanandroidx/core/provider/FontRequestWorker;->requestFontSync(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Lccsanandroidx/core/provider/CallbackWithHandler;II)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 169
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lccsanandroidx/core/provider/FontRequestWorker;->requestFontAsync(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Lccsanandroidx/core/provider/CallbackWithHandler;)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public static requestFont(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;Lccsanandroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "request"    # Lccsanandroidx/core/provider/FontRequest;
    .param p2, "callback"    # Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;
    .param p3, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "request",
            "callback",
            "handler"
        }
    .end annotation

    .line 122
    new-instance v0, Lccsanandroidx/core/provider/CallbackWithHandler;

    invoke-direct {v0, p2}, Lccsanandroidx/core/provider/CallbackWithHandler;-><init>(Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;)V

    .line 123
    .local v0, "callbackWrapper":Lccsanandroidx/core/provider/CallbackWithHandler;
    invoke-static {p3}, Lccsanandroidx/core/provider/RequestExecutor;->createHandlerExecutor(Lccsanandroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 124
    .local v1, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v1, v0}, Lccsanandroidx/core/provider/FontRequestWorker;->requestFontAsync(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Lccsanandroidx/core/provider/CallbackWithHandler;)Lccsanandroid/graphics/Typeface;

    .line 126
    return-void
.end method

.method public static resetCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    invoke-static {}, Lccsanandroidx/core/provider/FontRequestWorker;->resetTypefaceCache()V

    .line 568
    return-void
.end method

.method public static resetTypefaceCache()V
    .locals 0

    .line 178
    invoke-static {}, Lccsanandroidx/core/provider/FontRequestWorker;->resetTypefaceCache()V

    .line 179
    return-void
.end method
