.class synthetic Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler$1;
.super Ljava/lang/Object;
.source "MBNativeAdvancedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    invoke-static {}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->values()[Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler$1;->$SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum:[I

    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->negative:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler$1;->$SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum:[I

    sget-object v1, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->positive:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeAdvancedHandler$1;->$SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum:[I

    sget-object v1, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->undefined:Lccsancom/mbridge/msdk/out/MBMultiStateEnum;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/out/MBMultiStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
