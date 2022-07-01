.class public Lccsancom/vungle/warren/network/converters/EmptyResponseConverter;
.super Ljava/lang/Object;
.source "EmptyResponseConverter.java"

# interfaces
.implements Lccsancom/vungle/warren/network/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/network/converters/Converter<",
        "Lccsanokhttp3/ResponseBody;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lccsanokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/network/converters/EmptyResponseConverter;->convert(Lccsanokhttp3/ResponseBody;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lccsanokhttp3/ResponseBody;)Ljava/lang/Void;
    .locals 1
    .param p1, "value"    # Lccsanokhttp3/ResponseBody;

    .line 27
    invoke-virtual {p1}, Lccsanokhttp3/ResponseBody;->close()V

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
