import { initTRPC } from '@trpc/server';
import { z } from 'zod';

const t = initTRPC.create();

const router = t.router({
  getData: t.procedure
    .input(
      z.object({
        message: z.string().min(1)
      })
    )
    .query(({ input: { message } }) => `Here is the message: ${message}`)
});

export type AppRouter = typeof router;
