.class public final Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 40
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([BI)V

    .line 41
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    .line 51
    iput p2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 52
    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    .line 231
    return-void

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 188
    .local v2, "initialByteOffset":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 189
    .local v1, "initialBitOffset":I
    const/4 v3, 0x0

    .line 190
    .local v3, "leadingZeros":I
    :goto_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ge v6, v7, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_0

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    if-ne v6, v7, :cond_1

    move v0, v4

    .line 194
    .local v0, "hitLimit":Z
    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 195
    iput v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 196
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitsLeft()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v7, :cond_2

    :goto_2
    return v4

    .end local v0    # "hitLimit":Z
    :cond_1
    move v0, v5

    .line 193
    goto :goto_1

    .restart local v0    # "hitLimit":Z
    :cond_2
    move v4, v5

    .line 196
    goto :goto_2
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 10
    .param p1, "numBits"    # I

    .prologue
    const/16 v9, 0x8

    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v3, 0x0

    .line 177
    :goto_0
    return v3

    .line 138
    :cond_0
    const/4 v3, 0x0

    .line 141
    .local v3, "returnValue":I
    div-int/lit8 v4, p1, 0x8

    .line 142
    .local v4, "wholeBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 144
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    if-eqz v6, :cond_1

    .line 145
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v8, v8, 0x8

    ushr-int/2addr v7, v8

    or-int v0, v6, v7

    .line 150
    .local v0, "byteValue":I
    :goto_2
    add-int/lit8 p1, p1, -0x8

    .line 151
    and-int/lit16 v6, v0, 0xff

    shl-int/2addr v6, p1

    or-int/2addr v3, v6

    .line 152
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "byteValue":I
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v6, v7

    .restart local v0    # "byteValue":I
    goto :goto_2

    .line 156
    .end local v0    # "byteValue":I
    :cond_2
    if-lez p1, :cond_4

    .line 157
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int v2, v6, p1

    .line 158
    .local v2, "nextBit":I
    const/16 v6, 0xff

    rsub-int/lit8 v7, p1, 0x8

    shr-int/2addr v6, v7

    int-to-byte v5, v6

    .line 160
    .local v5, "writeMask":B
    if-le v2, v9, :cond_5

    .line 162
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, -0x8

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x10

    shr-int/2addr v7, v8

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 164
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 173
    :cond_3
    :goto_3
    rem-int/lit8 v6, v2, 0x8

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 176
    .end local v2    # "nextBit":I
    .end local v5    # "writeMask":B
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_0

    .line 167
    .restart local v2    # "nextBit":I
    .restart local v5    # "writeMask":B
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v2, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    .line 168
    if-ne v2, v9, :cond_3

    .line 169
    iget v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    goto :goto_3
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 3

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    .line 215
    .local v0, "codeNum":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 60
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->reset([BI)V

    .line 61
    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    .line 71
    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 72
    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 73
    iput p2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteLimit:I

    .line 74
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 99
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 100
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 101
    return-void
.end method

.method public skipBits(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 109
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 110
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 111
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 112
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->byteOffset:I

    .line 113
    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->bitOffset:I

    .line 115
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->assertValidOffset()V

    .line 116
    return-void
.end method
