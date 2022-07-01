.class public Lccsanenhance/f/c$g;
.super Lccsanenhance/f/b$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanenhance/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanenhance/f/c$g$a;,
        Lccsanenhance/f/c$g$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanenhance/f/b$a;-><init>()V

    return-void
.end method
