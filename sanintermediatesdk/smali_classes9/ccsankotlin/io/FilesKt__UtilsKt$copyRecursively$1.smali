.class final Lccsankotlin/io/FilesKt__UtilsKt$copyRecursively$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "Utils.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/io/FilesKt__UtilsKt;->copyRecursively$default(Ljava/io/File;Ljava/io/File;ZLccsankotlin/jvm/functions/Function2;ILjava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Ljava/io/File;",
        "exception",
        "Ljava/io/IOException;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/io/FilesKt__UtilsKt$copyRecursively$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsankotlin/io/FilesKt__UtilsKt$copyRecursively$1;

    invoke-direct {v0}, Lccsankotlin/io/FilesKt__UtilsKt$copyRecursively$1;-><init>()V

    sput-object v0, Lccsankotlin/io/FilesKt__UtilsKt$copyRecursively$1;->INSTANCE:Lccsankotlin/io/FilesKt__UtilsKt$copyRecursively$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/io/FilesKt__UtilsKt$copyRecursively$1;->invoke(Ljava/io/File;Ljava/io/IOException;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/io/File;Ljava/io/IOException;)Ljava/lang/Void;
    .locals 1
    .param p1, "$noName_0"    # Ljava/io/File;
    .param p2, "exception"    # Ljava/io/IOException;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
