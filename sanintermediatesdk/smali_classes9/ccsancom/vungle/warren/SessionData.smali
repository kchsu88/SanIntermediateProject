.class public Lccsancom/vungle/warren/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"


# instance fields
.field private initTime:J

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitTimeStamp()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lccsancom/vungle/warren/SessionData;->initTime:J

    return-wide v0
.end method

.method public getTimeout()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lccsancom/vungle/warren/SessionData;->timeout:J

    return-wide v0
.end method

.method public setInitTimeStamp(J)V
    .locals 0
    .param p1, "timeInMillis"    # J

    .line 10
    iput-wide p1, p0, Lccsancom/vungle/warren/SessionData;->initTime:J

    .line 11
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 22
    iput-wide p1, p0, Lccsancom/vungle/warren/SessionData;->timeout:J

    .line 23
    return-void
.end method
