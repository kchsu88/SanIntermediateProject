.class public abstract Lccsancom/google/common/base/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final SYSTEM_TICKER:Lccsancom/google/common/base/Ticker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lccsancom/google/common/base/Ticker$1;

    invoke-direct {v0}, Lccsancom/google/common/base/Ticker$1;-><init>()V

    sput-object v0, Lccsancom/google/common/base/Ticker;->SYSTEM_TICKER:Lccsancom/google/common/base/Ticker;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static systemTicker()Lccsancom/google/common/base/Ticker;
    .locals 1

    .line 44
    sget-object v0, Lccsancom/google/common/base/Ticker;->SYSTEM_TICKER:Lccsancom/google/common/base/Ticker;

    return-object v0
.end method


# virtual methods
.method public abstract read()J
.end method
